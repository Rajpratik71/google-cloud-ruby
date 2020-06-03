# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/grafeas.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'grafeas/v1/attestation_pb'
require 'grafeas/v1/build_pb'
require 'grafeas/v1/common_pb'
require 'grafeas/v1/deployment_pb'
require 'grafeas/v1/discovery_pb'
require 'grafeas/v1/image_pb'
require 'grafeas/v1/package_pb'
require 'grafeas/v1/upgrade_pb'
require 'grafeas/v1/vulnerability_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/grafeas.proto", :syntax => :proto3) do
    add_message "grafeas.v1.Occurrence" do
      optional :name, :string, 1
      optional :resource_uri, :string, 2
      optional :note_name, :string, 3
      optional :kind, :enum, 4, "grafeas.v1.NoteKind"
      optional :remediation, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      oneof :details do
        optional :vulnerability, :message, 8, "grafeas.v1.VulnerabilityOccurrence"
        optional :build, :message, 9, "grafeas.v1.BuildOccurrence"
        optional :image, :message, 10, "grafeas.v1.ImageOccurrence"
        optional :package, :message, 11, "grafeas.v1.PackageOccurrence"
        optional :deployment, :message, 12, "grafeas.v1.DeploymentOccurrence"
        optional :discovery, :message, 13, "grafeas.v1.DiscoveryOccurrence"
        optional :attestation, :message, 14, "grafeas.v1.AttestationOccurrence"
        optional :upgrade, :message, 15, "grafeas.v1.UpgradeOccurrence"
      end
    end
    add_message "grafeas.v1.Note" do
      optional :name, :string, 1
      optional :short_description, :string, 2
      optional :long_description, :string, 3
      optional :kind, :enum, 4, "grafeas.v1.NoteKind"
      repeated :related_url, :message, 5, "grafeas.v1.RelatedUrl"
      optional :expiration_time, :message, 6, "google.protobuf.Timestamp"
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 8, "google.protobuf.Timestamp"
      repeated :related_note_names, :string, 9
      oneof :type do
        optional :vulnerability, :message, 10, "grafeas.v1.VulnerabilityNote"
        optional :build, :message, 11, "grafeas.v1.BuildNote"
        optional :image, :message, 12, "grafeas.v1.ImageNote"
        optional :package, :message, 13, "grafeas.v1.PackageNote"
        optional :deployment, :message, 14, "grafeas.v1.DeploymentNote"
        optional :discovery, :message, 15, "grafeas.v1.DiscoveryNote"
        optional :attestation, :message, 16, "grafeas.v1.AttestationNote"
        optional :upgrade, :message, 17, "grafeas.v1.UpgradeNote"
      end
    end
    add_message "grafeas.v1.GetOccurrenceRequest" do
      optional :name, :string, 1
    end
    add_message "grafeas.v1.ListOccurrencesRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "grafeas.v1.ListOccurrencesResponse" do
      repeated :occurrences, :message, 1, "grafeas.v1.Occurrence"
      optional :next_page_token, :string, 2
    end
    add_message "grafeas.v1.DeleteOccurrenceRequest" do
      optional :name, :string, 1
    end
    add_message "grafeas.v1.CreateOccurrenceRequest" do
      optional :parent, :string, 1
      optional :occurrence, :message, 2, "grafeas.v1.Occurrence"
    end
    add_message "grafeas.v1.UpdateOccurrenceRequest" do
      optional :name, :string, 1
      optional :occurrence, :message, 2, "grafeas.v1.Occurrence"
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "grafeas.v1.GetNoteRequest" do
      optional :name, :string, 1
    end
    add_message "grafeas.v1.GetOccurrenceNoteRequest" do
      optional :name, :string, 1
    end
    add_message "grafeas.v1.ListNotesRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "grafeas.v1.ListNotesResponse" do
      repeated :notes, :message, 1, "grafeas.v1.Note"
      optional :next_page_token, :string, 2
    end
    add_message "grafeas.v1.DeleteNoteRequest" do
      optional :name, :string, 1
    end
    add_message "grafeas.v1.CreateNoteRequest" do
      optional :parent, :string, 1
      optional :note_id, :string, 2
      optional :note, :message, 3, "grafeas.v1.Note"
    end
    add_message "grafeas.v1.UpdateNoteRequest" do
      optional :name, :string, 1
      optional :note, :message, 2, "grafeas.v1.Note"
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "grafeas.v1.ListNoteOccurrencesRequest" do
      optional :name, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "grafeas.v1.ListNoteOccurrencesResponse" do
      repeated :occurrences, :message, 1, "grafeas.v1.Occurrence"
      optional :next_page_token, :string, 2
    end
    add_message "grafeas.v1.BatchCreateNotesRequest" do
      optional :parent, :string, 1
      map :notes, :string, :message, 2, "grafeas.v1.Note"
    end
    add_message "grafeas.v1.BatchCreateNotesResponse" do
      repeated :notes, :message, 1, "grafeas.v1.Note"
    end
    add_message "grafeas.v1.BatchCreateOccurrencesRequest" do
      optional :parent, :string, 1
      repeated :occurrences, :message, 2, "grafeas.v1.Occurrence"
    end
    add_message "grafeas.v1.BatchCreateOccurrencesResponse" do
      repeated :occurrences, :message, 1, "grafeas.v1.Occurrence"
    end
  end
end

module Grafeas
  module V1
    Occurrence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Occurrence").msgclass
    Note = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Note").msgclass
    GetOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GetOccurrenceRequest").msgclass
    ListOccurrencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListOccurrencesRequest").msgclass
    ListOccurrencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListOccurrencesResponse").msgclass
    DeleteOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DeleteOccurrenceRequest").msgclass
    CreateOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.CreateOccurrenceRequest").msgclass
    UpdateOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.UpdateOccurrenceRequest").msgclass
    GetNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GetNoteRequest").msgclass
    GetOccurrenceNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GetOccurrenceNoteRequest").msgclass
    ListNotesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNotesRequest").msgclass
    ListNotesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNotesResponse").msgclass
    DeleteNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DeleteNoteRequest").msgclass
    CreateNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.CreateNoteRequest").msgclass
    UpdateNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.UpdateNoteRequest").msgclass
    ListNoteOccurrencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNoteOccurrencesRequest").msgclass
    ListNoteOccurrencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNoteOccurrencesResponse").msgclass
    BatchCreateNotesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateNotesRequest").msgclass
    BatchCreateNotesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateNotesResponse").msgclass
    BatchCreateOccurrencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateOccurrencesRequest").msgclass
    BatchCreateOccurrencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateOccurrencesResponse").msgclass
  end
end